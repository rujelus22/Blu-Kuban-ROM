.class public Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
.super Ljava/lang/Object;
.source "AbstractListBouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
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

    .line 605
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mPos:I

    .line 608
    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mTop:I

    return-void
.end method
