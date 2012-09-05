.class final Lcom/locationlabs/v3client/V3ApiService$e;
.super Lcom/locationlabs/v3client/V3ApiService$j;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/V3ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Lcom/locationlabs/v3client/V3ApiService;


# direct methods
.method public constructor <init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/locationlabs/v3client/V3ApiService$e;->c:Lcom/locationlabs/v3client/V3ApiService;

    .line 197
    const-string v0, "com.locationlabs.v3client.action.SEND_CONTACT_LIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/locationlabs/v3client/V3ApiService$j;-><init>(Lcom/locationlabs/v3client/V3ApiService;Ldy;Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ldz;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object p0, p0, Lcom/locationlabs/v3client/V3ApiService$e;->a:Lep;

    check-cast p0, Ldy;

    iget-object v0, p0, Ldy;->a:Lcg;

    invoke-static {p1, v0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a(Landroid/content/Context;Lcg;)V

    .line 215
    invoke-static {p1, p2}, Lcom/locationlabs/v3client/HeartbeatService;->a(Landroid/content/Context;Ldz;)V

    .line 216
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/locationlabs/v3client/V3ApiService$e;->b:Lz;

    invoke-virtual {p0, p1}, Lcom/locationlabs/v3client/V3ApiService$e;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2, p2}, Lz;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    .line 203
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 204
    const-string v0, "Contact list max tries exceeded"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    .line 209
    :goto_17
    return-void

    .line 207
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t send to contact list, will retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    check-cast p2, Ldz;

    invoke-virtual {p0, p1, p2}, Lcom/locationlabs/v3client/V3ApiService$e;->a(Landroid/content/Context;Ldz;)V

    return-void
.end method
