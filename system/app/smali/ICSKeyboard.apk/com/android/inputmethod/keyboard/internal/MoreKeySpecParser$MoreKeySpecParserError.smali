.class public Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser$MoreKeySpecParserError;
.super Ljava/lang/RuntimeException;
.source "MoreKeySpecParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/MoreKeySpecParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreKeySpecParserError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    return-void
.end method
