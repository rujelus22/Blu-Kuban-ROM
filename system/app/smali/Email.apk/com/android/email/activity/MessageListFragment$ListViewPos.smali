.class public Lcom/android/email/activity/MessageListFragment$ListViewPos;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
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

    .line 4888
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4889
    iput v0, p0, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mPos:I

    .line 4891
    iput v0, p0, Lcom/android/email/activity/MessageListFragment$ListViewPos;->mTop:I

    return-void
.end method
