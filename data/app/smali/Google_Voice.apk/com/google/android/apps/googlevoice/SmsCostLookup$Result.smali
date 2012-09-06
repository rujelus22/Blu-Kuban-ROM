.class public final Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;
.super Ljava/lang/Object;
.source "SmsCostLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/SmsCostLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final destinationNumber:Ljava/lang/String;

.field private final displayableCost:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "destinationNumber"
    .parameter "displayableCost"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "destinationNumber"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->destinationNumber:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->displayableCost:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method getDestinationNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->destinationNumber:Ljava/lang/String;

    return-object v0
.end method

.method getDisplayableCost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SmsCostLookup$Result;->displayableCost:Ljava/lang/String;

    return-object v0
.end method
