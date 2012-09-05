.class Lcom/samsung/wimax/napid/MruActivity$ChannelClass;
.super Ljava/lang/Object;
.source "MruActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/MruActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelClass"
.end annotation


# instance fields
.field bandwidth:B

.field centerf1:I

.field centerf2:I

.field centerf3:I

.field fftSize:B

.field final synthetic this$0:Lcom/samsung/wimax/napid/MruActivity;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/MruActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/wimax/napid/MruActivity$ChannelClass;->this$0:Lcom/samsung/wimax/napid/MruActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
