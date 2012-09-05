.class public Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;
.super Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;
.source "SimpleQueryCursorAdapter.java"

# interfaces
.implements Lcom/sec/android/app/music/widget/OnCursorChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static final sFirstQueryNumberLimit:I


# instance fields
.field private mContentChangedHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field private final mQueryHandler:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->CLASSNAME:Ljava/lang/String;

    .line 43
    const-string v0, "50"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->sFirstQueryNumberLimit:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter "context"
    .parameter "view"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mView:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;-><init>(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mQueryHandler:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 32
    sget v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->sFirstQueryNumberLimit:I

    return v0
.end method


# virtual methods
.method public getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mQueryHandler:Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    return-object v0
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContentChangedHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContentChangedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 83
    :cond_11
    invoke-super {p0}, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->onContentChanged()V

    .line 84
    iget-boolean v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mDataValid:Z

    if-nez v0, :cond_1b

    .line 85
    invoke-super {p0}, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->onContentChanged()V

    .line 87
    :cond_1b
    return-void
.end method

.method public onCursorChanged(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/music/widget/OnCursorChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/music/widget/OnCursorChangeListener;->onCursorChanged(Landroid/database/Cursor;)V

    .line 170
    return-void
.end method

.method public setAutoReQuery(Z)V
    .registers 2
    .parameter "autoRequery"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mAutoRequery:Z

    .line 91
    return-void
.end method

.method public setContentChangedListenHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter;->mContentChangedHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method
