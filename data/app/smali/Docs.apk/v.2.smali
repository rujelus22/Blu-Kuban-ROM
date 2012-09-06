.class public Lv;
.super Ljava/lang/Object;
.source "FragmentActivity.java"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lv;->a:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0xd0t 0x0t 0x1t 0x1t
        0xd1t 0x0t 0x1t 0x1t
    .end array-data
.end method
