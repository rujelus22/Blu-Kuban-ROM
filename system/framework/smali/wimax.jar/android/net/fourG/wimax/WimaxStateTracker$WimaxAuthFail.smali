.class Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WimaxAuthFail"
.end annotation


# instance fields
.field nErrorCode:I

.field strError:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 272
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    .line 274
    iput-object p2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    .line 275
    return-void
.end method
