.class Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowBuilder"
.end annotation


# instance fields
.field builder:Landroid/content/ContentProviderOperation$Builder;

.field cv:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V
    .registers 3
    .parameter
    .parameter "_builder"

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 1086
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V
    .registers 5
    .parameter
    .parameter "_builder"
    .parameter "_ncv"

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    .line 1090
    iget-object v0, p3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1091
    return-void
.end method


# virtual methods
.method build()Landroid/content/ContentProviderOperation;
    .registers 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1109
    return-object p0
.end method

.method withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .registers 4
    .parameter "key"
    .parameter "previousResult"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->builder:Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1100
    return-object p0
.end method
