.class Lorg/apache/james/mime4j/message/Header$1;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;


# instance fields
.field final synthetic this$0:Lorg/apache/james/mime4j/message/Header;

.field final synthetic val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/message/Header;Lorg/apache/james/mime4j/parser/MimeStreamParser;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->stop()V

    return-void
.end method

.method public field(Lorg/apache/james/mime4j/parser/Field;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method
