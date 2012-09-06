.class Lmy;
.super LcL;
.source "DiscussionModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LcL",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 29
    const-string v0, "tabletUI"

    const-string v1, "phoneUI"

    invoke-direct {p0, p1, v0, v1}, LcL;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
