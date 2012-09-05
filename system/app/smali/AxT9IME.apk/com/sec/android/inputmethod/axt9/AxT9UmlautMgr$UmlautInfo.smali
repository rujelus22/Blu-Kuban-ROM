.class public Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;
.super Ljava/lang/Object;
.source "AxT9UmlautMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UmlautInfo"
.end annotation


# instance fields
.field private mKeyCode:I

.field private mLanguageDBID:S

.field private mUmlautString:Ljava/lang/String;


# direct methods
.method constructor <init>(SILjava/lang/String;)V
    .registers 4
    .parameter "languageDBID"
    .parameter "keyCode"
    .parameter "umlautString"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mLanguageDBID:S

    .line 29
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mKeyCode:I

    .line 30
    iput-object p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mUmlautString:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)S
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mLanguageDBID:S

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mKeyCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr$UmlautInfo;->mUmlautString:Ljava/lang/String;

    return-object v0
.end method
