.class public Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitUndoRedo"
.end annotation


# static fields
.field public static final REDO:I = 0x2

.field public static final UNDO:I = 0x1


# instance fields
.field mChildCount:I

.field mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field public mOperationType:I

.field mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

.field mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field parentViewThumnailNumber:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Lcom/samsung/app/video/editor/external/Element;I)V
    .registers 6
    .parameter "parentView"
    .parameter "newView"
    .parameter "parentElement"
    .parameter "operationType"

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 172
    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 173
    iput-object p3, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    .line 174
    iput p4, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mOperationType:I

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->parentViewThumnailNumber:I

    .line 176
    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 205
    :cond_9
    return-void
.end method

.method public setChildCount(I)V
    .registers 2
    .parameter "childNo"

    .prologue
    .line 195
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mChildCount:I

    .line 196
    return-void
.end method

.method public setNewView(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter "newView"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mNewView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 184
    return-void
.end method

.method public setOperationType(I)V
    .registers 2
    .parameter "operationType"

    .prologue
    .line 191
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mOperationType:I

    .line 192
    return-void
.end method

.method public setParentElement(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "parentElement"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentOldElement:Lcom/samsung/app/video/editor/external/Element;

    .line 188
    return-void
.end method

.method public setParentView(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter "parentView"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$SplitUndoRedo;->mParentView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 180
    return-void
.end method
