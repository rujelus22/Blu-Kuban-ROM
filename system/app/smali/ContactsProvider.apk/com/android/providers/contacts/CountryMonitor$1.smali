.class Lcom/android/providers/contacts/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/CountryMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor$1;->this$0:Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .registers 4
    .parameter "country"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor$1;->this$0:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/providers/contacts/CountryMonitor;->access$002(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    return-void
.end method
