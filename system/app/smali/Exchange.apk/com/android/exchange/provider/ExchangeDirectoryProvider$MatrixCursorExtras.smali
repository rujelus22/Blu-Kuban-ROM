.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;
.super Landroid/database/MatrixCursor;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixCursorExtras"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter "columnNames"

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    .line 1057
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2
    .parameter "extras"

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    .line 1061
    return-void
.end method
