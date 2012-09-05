.class public abstract Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;
.super Ljava/lang/Object;
.source "MXSelector.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;,
        Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;,
        Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;
    }
.end annotation


# instance fields
.field protected mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

.field protected mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

.field protected mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    .line 12
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    .line 14
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    .line 72
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isSelected(Ljava/lang/String;)Z
.end method

.method public setOnMaxNumberSelectedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mMaxNumListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;

    .line 50
    return-void
.end method

.method public setOnOverSizeSelectedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mSizeListener:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;

    .line 64
    return-void
.end method

.method public setSelecterChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->mChangedListner:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;

    .line 42
    return-void
.end method
