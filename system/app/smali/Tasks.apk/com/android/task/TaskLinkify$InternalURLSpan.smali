.class Lcom/android/task/TaskLinkify$InternalURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "TaskLinkify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/task/TaskLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalURLSpan"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDesc:Ljava/lang/String;

.field mIsAllDay:Z

.field mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mContext:Landroid/content/Context;

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "widget"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mTime:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mIsAllDay:Z

    iget-object v2, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mDesc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/task/TaskLinkify;->showPopup(Ljava/lang/String;ZLjava/lang/String;)V

    .line 179
    return-void
.end method

.method public setAllDay(Z)V
    .registers 2
    .parameter "isAllDay"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mIsAllDay:Z

    .line 174
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "desc"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mDesc:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setTimeString(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/task/TaskLinkify$InternalURLSpan;->mTime:Ljava/lang/String;

    .line 166
    return-void
.end method
