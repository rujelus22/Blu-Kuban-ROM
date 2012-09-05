.class final Lad$2;
.super Landroid/database/ContentObserver;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lad;->b(Landroid/net/Uri;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lad;


# direct methods
.method constructor <init>(Lad;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lad$2;->b:Lad;

    iput-object p3, p0, Lad$2;->a:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 7
    .parameter

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " *** MMS ContentObserver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lad$2;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " triggered onChange! ***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lad$2;->b:Lad;

    invoke-static {v0}, Lad;->c(Lad;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lad$2;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 222
    iget-object v2, p0, Lad$2;->b:Lad;

    iget-object v3, p0, Lad$2;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lad;->a(Landroid/net/Uri;JZ)V

    .line 223
    return-void
.end method
