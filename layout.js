import './globals.css';

export const metadata = {
  title: 'Impact Vente GEO',
  description: 'Suivi de visibilité sur les moteurs IA pour les produits digitaux',
};

export default function RootLayout({ children }) {
  return (
    <html lang="fr">
      <body>{children}</body>
    </html>
  );
}
