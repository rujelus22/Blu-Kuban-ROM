.class Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporaryEntry"
.end annotation


# instance fields
.field public final contactId:J

.field public final dataId:J

.field public final destination:Ljava/lang/String;

.field public final destinationLabel:Ljava/lang/String;

.field public final destinationType:I

.field public final displayName:Ljava/lang/String;

.field public final thumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .registers 10
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriString"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->displayName:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destination:Ljava/lang/String;

    .line 178
    iput p3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationType:I

    .line 179
    iput-object p4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->destinationLabel:Ljava/lang/String;

    .line 180
    iput-wide p5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->contactId:J

    .line 181
    iput-wide p7, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->dataId:J

    .line 182
    iput-object p9, p0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;->thumbnailUriString:Ljava/lang/String;

    .line 183
    return-void
.end method
