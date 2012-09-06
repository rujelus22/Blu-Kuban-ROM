.class final Lcom/google/googlenav/ui/view/dialog/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 198
    const-string v0, "HAS_SHOWN_RATINGS_INPUT_SPLASH_SCREEN"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method
