.class Lcom/google/android/apps/books/app/HelpFragment$Item;
.super Ljava/lang/Object;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field onClick:Landroid/view/View$OnClickListener;

.field text1:Ljava/lang/CharSequence;

.field text2:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/HelpFragment$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HelpFragment$Item;-><init>()V

    return-void
.end method
