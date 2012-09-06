.class final Lcom/google/googlenav/ui/view/dialog/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 170
    const-string v0, "HAS_SHOWN_RATINGS_INPUT_SPLASH_SCREEN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/ai;->a(Z)Z

    .line 172
    return-void
.end method
