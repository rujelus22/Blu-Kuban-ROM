.class Lcom/vlingo/client/car/sms/SMSMainScreen$2;
.super Ljava/lang/Object;
.source "SMSMainScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/sms/SMSMainScreen;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/sms/SMSMainScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$2;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$2;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    #getter for: Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->access$200(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    move-result-object v0

    if-nez v0, :cond_16

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$2;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    #calls: Lcom/vlingo/client/car/sms/SMSMainScreen;->showFavorites()V
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->access$300(Lcom/vlingo/client/car/sms/SMSMainScreen;)V

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/car/sms/SMSMainScreen$2;->this$0:Lcom/vlingo/client/car/sms/SMSMainScreen;

    #getter for: Lcom/vlingo/client/car/sms/SMSMainScreen;->favoritesAdaptor:Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;
    invoke-static {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen;->access$200(Lcom/vlingo/client/car/sms/SMSMainScreen;)Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/car/sms/SMSMainScreen$FavoritesAdaptor;->populateAsync()V

    .line 95
    :cond_16
    return-void
.end method
