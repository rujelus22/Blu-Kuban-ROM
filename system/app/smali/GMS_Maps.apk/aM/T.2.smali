.class LaM/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ju;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/google/googlenav/ui/v;

.field final synthetic f:LaM/S;


# direct methods
.method constructor <init>(LaM/S;ILcom/google/googlenav/ui/wizard/ju;IILcom/google/googlenav/ui/v;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, LaM/T;->f:LaM/S;

    iput p2, p0, LaM/T;->a:I

    iput-object p3, p0, LaM/T;->b:Lcom/google/googlenav/ui/wizard/ju;

    iput p4, p0, LaM/T;->c:I

    iput p5, p0, LaM/T;->d:I

    iput-object p6, p0, LaM/T;->e:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 124
    iget v0, p0, LaM/T;->a:I

    if-ne p2, v0, :cond_f

    .line 126
    iget-object v0, p0, LaM/T;->b:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->e()V

    .line 139
    :cond_b
    :goto_b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 140
    return-void

    .line 130
    :cond_f
    iget v0, p0, LaM/T;->c:I

    if-ne p2, v0, :cond_1d

    .line 131
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/Class;)V

    goto :goto_b

    .line 132
    :cond_1d
    iget v0, p0, LaM/T;->d:I

    if-ne p2, v0, :cond_b

    .line 133
    iget-object v0, p0, LaM/T;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, LaM/T;->e:Lcom/google/googlenav/ui/v;

    const-string v3, "profile"

    const/4 v6, 0x1

    move v5, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    goto :goto_b
.end method
