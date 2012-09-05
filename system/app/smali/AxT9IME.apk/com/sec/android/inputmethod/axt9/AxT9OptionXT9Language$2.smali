.class Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$2;
.super Ljava/lang/Object;
.source "AxT9OptionXT9Language.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method
