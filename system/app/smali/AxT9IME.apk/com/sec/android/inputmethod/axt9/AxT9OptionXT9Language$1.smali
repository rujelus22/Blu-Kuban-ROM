.class Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$1;
.super Ljava/lang/Object;
.source "AxT9OptionXT9Language.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;->onCreate(Landroid/os/Bundle;)V
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
    .line 67
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionXT9Language;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "pre"
    .parameter "newValue"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
