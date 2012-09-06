.class public LXu;
.super Ljava/lang/Object;
.source "BitmapUtilities.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, LXu;->a:I

    .line 25
    iput p2, p0, LXu;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, LXu;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, LXu;->b:I

    return v0
.end method
