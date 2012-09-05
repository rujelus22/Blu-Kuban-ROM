.class public Lcom/sec/android/inputmethod/axt9/widget/DioListView;
.super Landroid/widget/ListView;
.source "DioListView.java"


# static fields
.field public static DIO_LISTVIEW_DEFAULT_STYLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/inputmethod/axt9/widget/DioListView;->DIO_LISTVIEW_DEFAULT_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method
