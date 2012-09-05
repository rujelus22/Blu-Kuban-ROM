.class public Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SimpleScrollCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field protected mBusy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->mBusy:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 38
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    packed-switch p2, :pswitch_data_24

    .line 54
    :goto_1b
    return-void

    .line 45
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->mBusy:Z

    goto :goto_1b

    .line 49
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->mBusy:Z

    goto :goto_1b

    .line 43
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method
