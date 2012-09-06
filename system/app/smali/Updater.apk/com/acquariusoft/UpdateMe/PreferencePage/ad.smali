.class final Lcom/acquariusoft/UpdateMe/PreferencePage/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/ac;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/ad;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
