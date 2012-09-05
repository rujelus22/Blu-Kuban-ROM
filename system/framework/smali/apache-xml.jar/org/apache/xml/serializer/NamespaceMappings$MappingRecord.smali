.class Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MappingRecord"
.end annotation


# instance fields
.field final m_declarationDepth:I

.field final m_prefix:Ljava/lang/String;

.field final m_uri:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/xml/serializer/NamespaceMappings;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "prefix"
    .parameter "uri"
    .parameter "depth"

    .prologue
    .line 362
    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    .line 364
    if-nez p3, :cond_b

    const-string p3, ""

    .end local p3
    :cond_b
    iput-object p3, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    .line 365
    iput p4, p0, Lorg/apache/xml/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    .line 366
    return-void
.end method
