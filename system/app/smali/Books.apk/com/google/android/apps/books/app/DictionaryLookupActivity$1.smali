.class Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;
.super Ljava/lang/Object;
.source "DictionaryLookupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/DictionaryLookupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->finish()V

    .line 108
    return-void
.end method
