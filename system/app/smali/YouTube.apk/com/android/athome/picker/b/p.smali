.class final Lcom/android/athome/picker/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/music/TungstenGroupingService$OnVersionCheck;


# instance fields
.field final synthetic a:Landroid/support/place/music/TungstenGroupingService;

.field final synthetic b:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/athome/picker/b/p;->b:Lcom/android/athome/picker/b/a;

    iput-object p2, p0, Lcom/android/athome/picker/b/p;->a:Landroid/support/place/music/TungstenGroupingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVersionCheck(Landroid/support/place/music/TgsVersionCheck;)V
    .registers 5
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/athome/picker/b/p;->b:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->d(Lcom/android/athome/picker/b/a;Landroid/support/place/connector/ConnectorInfo;)Landroid/support/place/connector/ConnectorInfo;

    .line 769
    invoke-virtual {p1}, Landroid/support/place/music/TgsVersionCheck;->getCheckStatus()I

    move-result v0

    sget v1, Landroid/support/place/music/TgsVersionCheck;->CHECK_VERSION_STATUS_OK:I

    if-ne v0, v1, :cond_16

    .line 770
    iget-object v0, p0, Lcom/android/athome/picker/b/p;->b:Lcom/android/athome/picker/b/a;

    iget-object v1, p0, Lcom/android/athome/picker/b/p;->a:Landroid/support/place/music/TungstenGroupingService;

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TungstenGroupingService;)V

    .line 776
    :goto_15
    return-void

    .line 772
    :cond_16
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible TGS API version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method
