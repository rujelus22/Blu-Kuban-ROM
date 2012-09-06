.class public Lcom/google/commerce/wireless/topiary/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/commerce/wireless/topiary/T;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/commerce/wireless/topiary/T;->b:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/google/commerce/wireless/topiary/T;->c:I

    .line 41
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/commerce/wireless/topiary/T;
    .registers 5
    .parameter

    .prologue
    .line 50
    new-instance v0, Lcom/google/commerce/wireless/topiary/T;

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "allowedAgeInSeconds"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/commerce/wireless/topiary/T;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
