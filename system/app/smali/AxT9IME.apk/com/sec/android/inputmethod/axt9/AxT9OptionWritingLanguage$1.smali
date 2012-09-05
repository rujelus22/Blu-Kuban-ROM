.class Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;
.super Ljava/lang/Object;
.source "AxT9OptionWritingLanguage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;

    #calls: Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->updateLanguageList()V
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9OptionWritingLanguage;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
