.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v4, 0x0

    .line 102
    const-string v1, " "

    .line 103
    .local v1, format:Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, pattern:Ljava/util/regex/Pattern;
    :try_start_4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 107
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 108
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    .line 109
    const-string v4, ""
    :try_end_15
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_15} :catch_16

    .line 113
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    :cond_15
    :goto_15
    return-object v4

    .line 110
    :catch_16
    move-exception v0

    .line 111
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    goto :goto_15
.end method
