.class Lcom/estrongs/android/pop/app/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cp;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cq;->a:Lcom/estrongs/android/pop/app/cp;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/cp;->a(Lcom/estrongs/android/pop/app/cp;Z)V

    return-void
.end method
