.class Llibcore/net/http/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Llibcore/net/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/ResponseHeaders;


# direct methods
.method constructor <init>(Llibcore/net/http/ResponseHeaders;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "directive"
    .parameter "parameter"

    .prologue
    const/4 v1, 0x1

    .line 120
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 121
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->noCache:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$002(Llibcore/net/http/ResponseHeaders;Z)Z

    .line 133
    :cond_e
    :goto_e
    return-void

    .line 122
    :cond_f
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 123
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->noStore:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$102(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_e

    .line 124
    :cond_1d
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 125
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$202(Llibcore/net/http/ResponseHeaders;I)I

    goto :goto_e

    .line 126
    :cond_2f
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 127
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$302(Llibcore/net/http/ResponseHeaders;I)I

    goto :goto_e

    .line 128
    :cond_41
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 129
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->isPublic:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$402(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_e

    .line 130
    :cond_4f
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$502(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_e
.end method
