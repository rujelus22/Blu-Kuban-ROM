.class Lcd;
.super LanP;
.source "ApplicationModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LanP",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Landroid/app/Activity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcb;


# direct methods
.method constructor <init>(Lcb;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcd;->a:Lcb;

    invoke-direct {p0}, LanP;-><init>()V

    return-void
.end method
