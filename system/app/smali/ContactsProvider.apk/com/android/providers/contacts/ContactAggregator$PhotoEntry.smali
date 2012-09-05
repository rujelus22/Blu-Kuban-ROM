.class Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
.super Ljava/lang/Object;
.source "ContactAggregator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final fileSize:I

.field final pixelCount:I

.field final synthetic this$0:Lcom/android/providers/contacts/ContactAggregator;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactAggregator;II)V
    .registers 4
    .parameter
    .parameter "pixelCount"
    .parameter "fileSize"

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->this$0:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2120
    iput p2, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    .line 2121
    iput p3, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    .line 2122
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;II)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I
    .registers 4
    .parameter "pe"

    .prologue
    .line 2126
    if-nez p1, :cond_4

    .line 2127
    const/4 v0, -0x1

    .line 2132
    :goto_3
    return v0

    .line 2129
    :cond_4
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    if-ne v0, v1, :cond_10

    .line 2130
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 2132
    :cond_10
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    sub-int/2addr v0, v1

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 2112
    check-cast p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I

    move-result v0

    return v0
.end method
