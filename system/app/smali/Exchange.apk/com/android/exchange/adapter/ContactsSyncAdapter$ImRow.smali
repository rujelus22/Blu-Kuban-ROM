.class Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"

# interfaces
.implements Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImRow"
.end annotation


# instance fields
.field im:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "_im"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;->im:Ljava/lang/String;

    .line 418
    return-void
.end method


# virtual methods
.method public addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V
    .registers 4
    .parameter "builder"

    .prologue
    .line 421
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;->im:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 422
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;->im:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
