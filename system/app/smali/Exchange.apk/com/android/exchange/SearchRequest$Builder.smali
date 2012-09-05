.class public final Lcom/android/exchange/SearchRequest$Builder;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountId:J

.field private mConversationId:Ljava/lang/String;

.field private mOptionsBodyPreferenceTruncationSize:I

.field private mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

.field private mOptionsDeepTraversal:Z

.field private mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

.field private mOptionsRange:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsRebuildResults:Z

.field private mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

.field private mQueryCollectionIds:[J

.field private mQueryFreeText:Ljava/lang/String;

.field private mQueryGreaterThan:Ljava/util/Date;

.field private mQueryLessThan:Ljava/util/Date;

.field private mQueryText:Ljava/lang/String;

.field private mStoreName:Lcom/android/exchange/SearchRequest$StoreName;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 699
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 701
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    .line 703
    sget-object v0, Lcom/android/exchange/SearchRequest$StoreName;->INVALID:Lcom/android/exchange/SearchRequest$StoreName;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 705
    sget-object v0, Lcom/android/exchange/SearchRequest$QueryClass;->INVALID:Lcom/android/exchange/SearchRequest$QueryClass;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 707
    sget-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 709
    sget-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 711
    sget-object v0, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->INVALID:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 713
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    .line 715
    sget-object v0, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->INVALID:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 717
    return-void
.end method


# virtual methods
.method public accountId(J)Lcom/android/exchange/SearchRequest$Builder;
    .registers 3
    .parameter "accountId"

    .prologue
    .line 723
    iput-wide p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    .line 725
    return-object p0
.end method

.method public build()Lcom/android/exchange/SearchRequest;
    .registers 19

    .prologue
    .line 877
    new-instance v1, Lcom/android/exchange/SearchRequest$SearchRequestImpl;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/exchange/SearchRequest$Builder;->mAccountId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryFreeText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryCollectionIds:[J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryGreaterThan:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/SearchRequest$Builder;->mQueryLessThan:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRange:Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsDeepTraversal:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRebuildResults:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/SearchRequest$Builder;->mConversationId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/android/exchange/SearchRequest$SearchRequestImpl;-><init>(JLcom/android/exchange/SearchRequest$StoreName;Ljava/lang/String;Ljava/lang/String;Lcom/android/exchange/SearchRequest$QueryClass;[JLjava/util/Date;Ljava/util/Date;Landroid/util/Pair;ZZLcom/android/exchange/SearchRequest$BodyPreferenceType;ILcom/android/exchange/SearchRequest$OptionsMIMESupport;Ljava/lang/String;)V

    return-object v1
.end method

.method public optionsBodyPreferenceTruncationSize(I)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "optionsBodyPreferenceTruncationSize"

    .prologue
    .line 857
    iput p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceTruncationSize:I

    .line 859
    return-object p0
.end method

.method public optionsBodyPreferenceType(Lcom/android/exchange/SearchRequest$BodyPreferenceType;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "optionsBodyPreferenceType"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsBodyPreferenceType:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    .line 849
    return-object p0
.end method

.method public optionsDeepTraversal()Lcom/android/exchange/SearchRequest$Builder;
    .registers 2

    .prologue
    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsDeepTraversal:Z

    .line 829
    return-object p0
.end method

.method public optionsMIMESupport(Lcom/android/exchange/SearchRequest$OptionsMIMESupport;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "optionsMIMESupport"

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsMIMESupport:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    .line 869
    return-object p0
.end method

.method public optionsRange(II)Lcom/android/exchange/SearchRequest$Builder;
    .registers 6
    .parameter "startRange"
    .parameter "endRange"

    .prologue
    .line 817
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRange:Landroid/util/Pair;

    .line 819
    return-object p0
.end method

.method public optionsRebuildResults()Lcom/android/exchange/SearchRequest$Builder;
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SearchRequest$Builder;->mOptionsRebuildResults:Z

    .line 839
    return-object p0
.end method

.method public queryClass(Lcom/android/exchange/SearchRequest$QueryClass;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "queryClass"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryClass:Lcom/android/exchange/SearchRequest$QueryClass;

    .line 779
    return-object p0
.end method

.method public queryCollectionIds([J)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "queryCollectionIds"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryCollectionIds:[J

    .line 789
    return-object p0
.end method

.method public queryConvId(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "convId"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mConversationId:Ljava/lang/String;

    .line 767
    return-object p0
.end method

.method public queryFreeText(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "query"

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryFreeText:Ljava/lang/String;

    .line 755
    return-object p0
.end method

.method public queryGreaterThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "queryGreaterThan"

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryGreaterThan:Ljava/util/Date;

    .line 799
    return-object p0
.end method

.method public queryLessThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "queryLessThan"

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mQueryLessThan:Ljava/util/Date;

    .line 809
    return-object p0
.end method

.method public storeName(Lcom/android/exchange/SearchRequest$StoreName;)Lcom/android/exchange/SearchRequest$Builder;
    .registers 2
    .parameter "storeName"

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/exchange/SearchRequest$Builder;->mStoreName:Lcom/android/exchange/SearchRequest$StoreName;

    .line 735
    return-object p0
.end method
