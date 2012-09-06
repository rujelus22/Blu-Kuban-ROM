.class Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$IllegalAttribute;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;
.source "KeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IllegalAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 5
    .parameter "parser"
    .parameter "attribute"

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has illegal attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder$ParseException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 868
    return-void
.end method
