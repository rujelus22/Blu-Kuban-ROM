.class abstract LanX;
.super Laqj;
.source "AbstractProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laqj",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Laoy;


# direct methods
.method protected constructor <init>(Laoy;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Laqj;-><init>()V

    .line 40
    iput-object p1, p0, LanX;->a:Laoy;

    .line 41
    return-void
.end method
