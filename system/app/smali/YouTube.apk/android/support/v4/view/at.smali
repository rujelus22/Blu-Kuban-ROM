.class final Landroid/support/v4/view/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 106
    check-cast p1, Landroid/support/v4/view/aw;

    check-cast p2, Landroid/support/v4/view/aw;

    iget v0, p1, Landroid/support/v4/view/aw;->b:I

    iget v1, p2, Landroid/support/v4/view/aw;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
