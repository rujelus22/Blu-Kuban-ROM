.class public Lcom/google/api/client/googleapis/GoogleHeaders;
.super Lcom/google/api/client/http/HttpHeaders;
.source "GoogleHeaders.java"


# static fields
.field public static final SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;


# instance fields
.field public gdataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "GData-Version"
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


# virtual methods
.method public setApplicationName(Ljava/lang/String;)V
    .registers 2
    .parameter "applicationName"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/GoogleHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setGoogleLogin(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 141
    invoke-static {p1}, Lcom/google/api/client/googleapis/GoogleHeaders;->getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/GoogleHeaders;->setAuthorization(Ljava/lang/String;)V

    .line 142
    return-void
.end method
