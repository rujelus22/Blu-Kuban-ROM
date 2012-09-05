.class public Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$EffectUndoRedo;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectUndoRedo"
.end annotation


# static fields
.field public static final REDO:I = 0x2

.field public static final RETOUCH:I = 0x2

.field public static final TRANSITION:I = 0x1

.field public static final UNDO:I = 0x1


# instance fields
.field edit:Lcom/samsung/app/video/editor/external/Edit;

.field element:Lcom/samsung/app/video/editor/external/Element;

.field public operation:I

.field type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
