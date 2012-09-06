.class public Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;
.super Ljava/lang/Object;
.source "BarGraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/BarGraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InternalRowInfo"
.end annotation


# instance fields
.field public mLabel:Ljava/lang/String;

.field public mLabelLayout:Landroid/text/StaticLayout;

.field public mValue:J

.field public mValueLayout:Landroid/text/StaticLayout;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
