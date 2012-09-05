.class public Lcom/sec/android/socialhub/util/HubColor;
.super Ljava/lang/Object;
.source "HubColor.java"


# static fields
.field public static SEARCH_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 7
    const/4 v0, 0x0

    const/16 v1, 0xa8

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/sec/android/socialhub/util/HubColor;->SEARCH_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
