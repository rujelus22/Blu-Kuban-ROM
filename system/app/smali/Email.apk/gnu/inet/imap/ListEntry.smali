.class public Lgnu/inet/imap/ListEntry;
.super Ljava/lang/Object;
.source "ListEntry.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# instance fields
.field private delimiter:C

.field private mailbox:Ljava/lang/String;

.field private marked:Z

.field private noinferiors:Z

.field private noselect:Z

.field private unmarked:Z


# direct methods
.method constructor <init>(Ljava/lang/String;CZZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lgnu/inet/imap/ListEntry;->mailbox:Ljava/lang/String;

    .line 69
    iput-char p2, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    .line 70
    iput-boolean p3, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    .line 71
    iput-boolean p4, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    .line 72
    iput-boolean p5, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    .line 73
    iput-boolean p6, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    .line 74
    return-void
.end method

.method private static conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    if-eqz p2, :cond_d

    .line 159
    if-eqz p1, :cond_9

    .line 161
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_9
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const/4 p1, 0x1

    .line 166
    :cond_d
    return p1
.end method


# virtual methods
.method public getDelimiter()C
    .registers 2

    .prologue
    .line 89
    iget-char v0, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    return v0
.end method

.method public isNoinferiors()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    if-eqz v1, :cond_3f

    .line 138
    :cond_15
    const-string v1, "(\u001b[00;35m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const/4 v1, 0x0

    .line 140
    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    const-string v3, "\\Noinferiors"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    .line 141
    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    const-string v3, "\\Noselect"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    .line 142
    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    const-string v3, "\\Marked"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    .line 143
    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    const-string v3, "\\Unmarked"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    .line 144
    const-string v1, "\u001b[00m) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_3f
    const-string v1, "\"\u001b[00;31m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-char v1, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\u001b[00m\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Lgnu/inet/imap/ListEntry;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
