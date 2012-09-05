.class Landroid/support/v4/app/ActivityCompatHoneycomb;
.super Ljava/lang/Object;
.source "ActivityCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static invalidateOptionsMenu(Landroid/app/Activity;)V
    .registers 1
    .parameter "activity"

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 31
    return-void
.end method
