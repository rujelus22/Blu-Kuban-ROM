.class final Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5210
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type$1;->findValueByNumber(I)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;
    .registers 3
    .parameter "number"

    .prologue
    .line 5212
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$SuggestionType$Type;

    move-result-object v0

    return-object v0
.end method
