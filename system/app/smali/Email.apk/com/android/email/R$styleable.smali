.class public final Lcom/android/email/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SizeBoundingFrameLayout_attributes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2721
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/email/R$styleable;->SizeBoundingFrameLayout_attributes:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
