from blogofile.cache import bf

blog = bf.config.controllers.blog


def run():
    write_feed(blog.posts, blog.path, blog.path + "/rss.xml", "rss.mako")
    write_feed(blog.posts, blog.path, blog.path + "/atom.xml", "atom.mako")

def write_feed(posts, root, path, template):
    blog.logger.info("Writing RSS/Atom feed: " + path)
    env = {"posts": posts, "root": root}
    bf.writer.materialize_template(template, path, env)
