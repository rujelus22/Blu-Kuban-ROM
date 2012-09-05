.class public Lcom/google/api/client/googleapis/GoogleHeaders;
.super Lcom/google/api/client/http/HttpHeaders;
.source "GoogleHeaders.java"


# static fields
.field public static final SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;


# instance fields
.field public gdataClient:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Client"
    .end annotation
.end field

.field public gdataKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Key"
    .end annotation
.end field

.field public gdataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "GData-Version"
    .end annotation
.end field

.field public googAcl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-acl"
    .end annotation
.end field

.field public googCopySource:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source"
    .end annotation
.end field

.field public googCopySourceIfMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-match"
    .end annotation
.end field

.field public googCopySourceIfModifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-modified-since"
    .end annotation
.end field

.field public googCopySourceIfNoneMatch:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-none-match"
    .end annotation
.end field

.field public googCopySourceIfUnmodifiedSince:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-copy-source-if-unmodified-since"
    .end annotation
.end field

.field public googDate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-date"
    .end annotation
.end field

.field public googMetadataDirective:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x-goog-metadata-directive"
    .end annotation
.end field

.field public methodOverride:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-HTTP-Method-Override"
    .end annotation
.end field

.field public slug:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Slug"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, " !\"#$&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/googleapis/GoogleHeaders;->SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    return-void
.end method

.method public static getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authToken"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLogin auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
