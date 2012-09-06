.class final Lorg/apache/james/mime4j/field/MailboxField$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .registers 5

    new-instance v0, Lorg/apache/james/mime4j/field/MailboxField;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/MailboxField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-object v0
.end method
