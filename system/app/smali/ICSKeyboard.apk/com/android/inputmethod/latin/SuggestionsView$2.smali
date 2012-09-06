.class Lcom/android/inputmethod/latin/SuggestionsView$2;
.super Ljava/lang/Object;
.source "SuggestionsView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/MoreKeysPanel$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissMoreKeysPanel()Z
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestionsView$2;->this$0:Lcom/android/inputmethod/latin/SuggestionsView;

    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->dismissMoreSuggestions()Z
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$2(Lcom/android/inputmethod/latin/SuggestionsView;)Z

    move-result v0

    return v0
.end method
