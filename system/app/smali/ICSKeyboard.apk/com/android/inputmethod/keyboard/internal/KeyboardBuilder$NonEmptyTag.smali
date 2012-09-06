.class Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$NonEmptyTag;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonEmptyTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .parameter "tag"
    .parameter "parser"

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " must be empty tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 875
    return-void
.end method
