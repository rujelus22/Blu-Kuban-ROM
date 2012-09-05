.class public Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
.super Ljava/lang/Object;
.source "BouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewPos"
.end annotation


# instance fields
.field public mPos:I

.field public mTop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mPos:I

    .line 232
    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mTop:I

    return-void
.end method
