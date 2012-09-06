.class final Lcom/dropbox/android/activity/aZ;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/aY;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/aY;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/dropbox/android/activity/aZ;->a:Lcom/dropbox/android/activity/aY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 372
    invoke-static {}, Lcom/dropbox/android/util/h;->s()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 373
    return-void
.end method
