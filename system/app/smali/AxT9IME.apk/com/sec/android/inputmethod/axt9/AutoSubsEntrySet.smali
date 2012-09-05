.class public Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
.super Ljava/lang/Object;
.source "AutoSubsEntrySet.java"


# instance fields
.field private mShortcut:Ljava/lang/String;

.field private mSubstitution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mShortcut:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mSubstitution:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getShortcut()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mShortcut:Ljava/lang/String;

    return-object v0
.end method

.method public getSubstitution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mSubstitution:Ljava/lang/String;

    return-object v0
.end method

.method public setShortcut(Ljava/lang/String;)V
    .registers 2
    .parameter "shortcut"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mShortcut:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSubstitution(Ljava/lang/String;)V
    .registers 2
    .parameter "substitution"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->mSubstitution:Ljava/lang/String;

    .line 45
    return-void
.end method
